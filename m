Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6775A41D647
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 10:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791024323; cv=none; b=rK5vItUo5HL6oHu24CmI4CXOjGEu3F2ePtULs0InMOHDV3ersFR1BaP//NXQ5kTqgZAssUj4NfrKGV2eHw7g/VmYgCT3Gci0sULw+VhkL+olme6LB28eXd3B/LD6qoKyofEfUxnZc0utx9nD6lHtd3oBAa74SgbQ2twlWpmqgJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791024323; c=relaxed/simple;
	bh=C/Y3Ot7RNrZHYSeEDH5Kt14WO3UPSouGXT3gCd59SUM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=rc8Sw3VIaB15YLiBYYUA0ELHTgXamv7L8ce2YHyVT/l5w0MYc3OIjpBB9wkSzsq1G+KeD/jA+xXZxeJUT7ioRN3swhAPYOtiGuZamMmbQGjVqUWZy2jTS+EItqzZlghjp4PbW7o7anIxVUFUh+9XLoFH1dT9o0W0h89rsHJW0OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1791024323;
	bh=C/Y3Ot7RNrZHYSeEDH5Kt14WO3UPSouGXT3gCd59SUM=;
	h=Subject:From:To:Date:From;
	b=YjmtyfAGWI2jXBL4IbAQAlzNmOhf6EIJQ2zXE2W3h7cTe5PdOk5kjQuHQS8n43VQ7
	 CktW16fcj8Zg9JnHOuhqZudCY92XAamkvvgNN33cqTf0N1h7H8P81ddis9BmEvrPGv
	 PsunARRmIiDIF9cMN82jYSGGNawYYy32acqk1EJw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 110511F0089B
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 10:45:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F41503924460
	for <linux-kernel-announce@vger.kernel.org>; Sat,  3 Oct 2026 10:45:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.189 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 03 Oct 2026 10:45:20 +0000
Message-Id: <20261003104520.release-6.1.189@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.189
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.189.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.189.xz

Linux kernel version 6.1.189 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.189.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.189.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.189.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.189/v6.1.188

