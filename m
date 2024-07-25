Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A47249ED
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jul 2024 08:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721894749; cv=none; b=apxHCerag1FXxI/wvC7UAKsZo2tYKk3KySF3toZRG2KmQjf3w9A+KtwBLWHoGxkCaqt54mQIbFiv0klV4VKh2qxKCumWS0eD3HpDw3t115W/cBoSQP2ItJ+MYywL9/6LM7YAVwWRUlIasOFM5OBKTFQTav9OQwkWPfIezObjU8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721894749; c=relaxed/simple;
	bh=i3j9LdlQB5AoConS4nixLL6h7C38Ot8ubQ1LdZ+VseE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ArugPsKbqHBUFgoAv7efcZrzm16t+zAe4JKTE40PubPfPjfOylxMN9zpWwl6V/a+RnzuSkV621OEiN/Zi4jPywBGzf0qWWeJnTNdqKwiATQ9a95MW/Lq5HSKimF7rttvQQ0JN/k0oMUGVdVNa+SGBu0QnzFFkOvVAKStl2pbjdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1721894749;
	bh=i3j9LdlQB5AoConS4nixLL6h7C38Ot8ubQ1LdZ+VseE=;
	h=Subject:From:To:Date:From;
	b=ccFycNzxhssMVraCyBKWeVdUl/LEREJTbQu+mZ0XOVsuYJPnZtYLfHP4rWuTi8BVu
	 IKh1aqCD4vs0r+wp7boikn7ilJzpK200Av9X7XEMou39uEy9vLepc4FmMzAlgsCxHM
	 6di9jQxt3/8ZsGVFdsmbuFcIOcnuIrHfOolNKNNQ=
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8240C116B1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jul 2024 08:05:48 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C8DEFC43638
	for <linux-kernel-announce@vger.kernel.org>; Thu, 25 Jul 2024 08:05:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.101 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 25 Jul 2024 08:05:48 +0000
Message-Id: <20240725080548.release-6.1.101@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.101
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.101.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.101.xz

Linux kernel version 6.1.101 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.101.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.101.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.101.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.101/v6.1.100

