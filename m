Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DC5477992
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 16:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787157985; cv=none; b=rPyiYMoEULimVIR+l6qjl/fmNS9AraejrTbUGrKBdZccbdfA22GiXNFJoGXruPkT/QMSxW0IS5T4L8x8Vj5dHIIzBteF/2KaupQ6D3EPpCCLm6ve4R/ChigrOFuC2m0IFu1rTPdyOBuZ68JxZe2SbRlTTUdUfNFlcPr9e/HPc4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787157985; c=relaxed/simple;
	bh=iEV5yCPqNFAtbxB0f/yPqTH6QNPUG/h9UgMIoNvvdII=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=MtTypfurpetT+nyz+TZZ+M7cQ/ykITre+oyQ++xbgvcj9lse6zk2KZW5bJpKvzhTmehwE4pvc8AvWT+M17Ak2TwuEKEc1cEYX+vdjdQP2vj2nCLKDjQxd/AtR18BS1b+bmi4fiHBEXQRaCZ3pAhGe1arPnITKRSbtZd+CQ9eUY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787157985;
	bh=iEV5yCPqNFAtbxB0f/yPqTH6QNPUG/h9UgMIoNvvdII=;
	h=Subject:From:To:Date:From;
	b=kp3qYNInzAjq82jJmZG7c/Y8Rsk3QEX36QiyBnRAYJZijvr2ypModw83osUJ+v8f3
	 9qNiD33PS8of3w4f64/+bUL4//8nHf1Ki/VbzcLFVe0W3YSA0qlKuwcoTZsIvnvtEb
	 uCvQ864Xe74549adsae3Tv5RgOfzZv47IgdS3oGk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2AF11F000E9
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 16:46:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C2BD38119E6
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 16:45:36 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.1.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 19 Aug 2026 16:45:34 +0000
Message-Id: <20260819164534.release-7.1.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.1.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.9.xz

Linux kernel version 7.1.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.1.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.1.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.1.9/v7.1.8

