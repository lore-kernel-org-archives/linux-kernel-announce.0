Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5497D1CAAF
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:50:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711518646; cv=none; b=iTl0g9TBKfn+u5p6xiVzJViwRN+jH7cgXLP8wiJyTPsj5v8JPXKEnFxG54sw7jiZGacNl8uRg4W7Olt9FGMf28lW8BQsQi6o54oqkA+xEaLkMypvvuN1CCVbxJl6I/4apBkDqKABcLo7HADvXLPbe7Gl6wvLuUKGnVStmMLcDMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711518646; c=relaxed/simple;
	bh=CxArbfwrc+ytSNZoGSBVNpNlkDcwm0S5nmaM8gG3LLE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=VVtmG8nEuSBLOhi0k12urq2Yb363pV6W0JVjw+bx/HIL8tSrawX5D7VoYaWZITTiVQjAgj7N+3mdxEl3Z0q5625cBhm9RAGe6DNebtlTpQr39WGv4tc2bCnFK0Iu44mSBe5GV90ribZNMeVhfTZUn8Mf8jPR9fN9Ap+u5/+mLrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1711518646;
	bh=CxArbfwrc+ytSNZoGSBVNpNlkDcwm0S5nmaM8gG3LLE=;
	h=Subject:From:To:Date:From;
	b=MYI7Y81SqWhL8eS8c9KwZUFiQVJRpBMztwSnyIgN1dlz0vKaWgmq3dhzohNTCU1iT
	 VnzKQRi6NiN1UVgux1cLvl4nJJK+wOrmA5HAhHw9QAQNx17pmHfFu+I5yXzadil3sn
	 1B64+gMca+nU5tJAuNCId2I+KYH1nMTBcWOPEl04=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1F460C433A6
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:50:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 11355D9505F
	for <linux-kernel-announce@vger.kernel.org>; Wed, 27 Mar 2024 05:50:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.214 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 27 Mar 2024 05:50:46 +0000
Message-Id: <20240327055046.release-5.10.214@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.214
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.214.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.214.xz

Linux kernel version 5.10.214 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.214.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.214.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.214.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.214/v5.10.213

