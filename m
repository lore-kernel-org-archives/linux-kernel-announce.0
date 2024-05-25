Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CF23C08F
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716647747; cv=none; b=b6p8aCp2UZvwZ3vYGYhn3O5IglBNtzBesxIyA7UcaKWSZrcpa366FKDiRulhsqJGEdOiesxsYOgTT3TpCH1i/j3U5fqqVht76+3kzTEWX4cqgQ+rsfHqZrSPj49Kl9RjvUuo2wVGBDkJ3DQhAm8hA0aF3UuyvVdLS82YtHJQlSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716647747; c=relaxed/simple;
	bh=0PHWB0uUGTooS3kzabmS3kWn8rRlyzbyuvnM5RqTZVE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=dL/0/ZUAr17SWFvwrcQ+ZxCOJ5uLP1S2YhczvnUdCN+HSTHnvaEN8asdMgtcvC0WcCgjFpOLnPIzEuGPPI/zd7qTDxukNUxn+CNhtbnGIjwYJLV1fWnepPRSaM2r1Q1yA+QitrH2MEfhQYpGaClXgKhqCAbFArqYKTx4I3b8x8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1716647746;
	bh=0PHWB0uUGTooS3kzabmS3kWn8rRlyzbyuvnM5RqTZVE=;
	h=Subject:From:To:Date:From;
	b=uMDzinBOZvROc1rEEANWDBG+Aj4isPJH7NTg8cBmJjsdKltfvR1u9CBWEPvXi/8Ap
	 IX2hUis6hzLGR5aaB4xYdjJZCYdFGOvoAPnhnS/7WqDD0UCm7Vd2c0931N2EeVQNfN
	 s14Xb2mv0ziAb4By9mbBovEP0LYeCQAL8vYQQdkE=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93BB0C3277B
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:35:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 7F977C433F2
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:35:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.218 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 25 May 2024 14:35:46 +0000
Message-Id: <20240525143546.release-5.10.218@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.218
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.218.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.218.xz

Linux kernel version 5.10.218 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.218.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.218.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.218.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.218/v5.10.217

