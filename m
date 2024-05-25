Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BADD45006
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716647145; cv=none; b=Z76R95Hl6HejRfEfW4gJrSfIoHVmCcoVv2VOOGyy27uLkguBOKrAsonFevAaopJ145Lhm8swhTztEWfwm7DDJx9FXfVghYo3aruYHSDLci9QKlqvvHnq2vLYlx7TEiefDq2yQ+agBk3tc5VJUcF0KLjcWkXmKy85REafylJX4KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716647145; c=relaxed/simple;
	bh=JLE0Xttj/ilanvJFQuTEfFHezthQPO3Aca94GRQhOuE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=I2f/urKJVd+pQyNQdVdRUe/Ze6zj5sXsyTNofHucZyYjxmmqhAFdsQFrb2CEJmr3fjhp2zn9CW8YLhQGjRmOruvlm6cnePxUC2tYFDQU8L1Qp0Xr2J5v97HWChpYjjmruM026DsSX9ofmlL1n8zIpy1bVCS6y/iClDHP9CCp6Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1716647145;
	bh=JLE0Xttj/ilanvJFQuTEfFHezthQPO3Aca94GRQhOuE=;
	h=Subject:From:To:Date:From;
	b=dQcpKDTk4gpduTeMmbES44hQCvhjbW0NaiXQPZ4q88LwamC6BpeB27O0xYQz+JQ8z
	 +4Uhy0cTwzA1PHHCUAmNCuL1KdtF7v7Is8g/d6gH5LDxL3AM803TpLaRpAJLumegcQ
	 81ett8T0ysmU8QmcyCKi0OR+kOoGAe/zJGunggS8=
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0B6C2BD11
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:25:44 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C8D0BC433F2
	for <linux-kernel-announce@vger.kernel.org>; Sat, 25 May 2024 14:25:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 4.19.315 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 25 May 2024 14:25:44 +0000
Message-Id: <20240525142544.release-4.19.315@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 4.19.315
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.315.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.315.xz

Linux kernel version 4.19.315 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.315.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v4.x/patch-4.19.315.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.315.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v4.19.315/v4.19.314

