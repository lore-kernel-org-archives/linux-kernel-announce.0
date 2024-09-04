Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DD61D04B8
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:50:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725450654; cv=none; b=i3+FC8ZL408cQgQ6fQ5WrIkktEzI3pbz2pl8fHHv48gyF8sd9tEh+TWxzK8LxoHoa9voNNPtSMWIaa7IQ+/cOfGTPHymPbXh71J9bOq/Egn1UFch+LiZrMtKMqIWHOkcqX9M0ZQZbq1/3BUCrd/9sqrvK6T8OsryOGhWj5NKbIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725450654; c=relaxed/simple;
	bh=67DHXGeJzWhna0cN+5taHLo5aa/4CvTVHOaYRAJNr04=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=M8aR4Rc8lctApQSmau6tMdpwkUJ3rAdRSsQu3GVRF257+6gD4tjGm2yWRITPYdDYSIU9Q2yDBFqodVgty78vcKnABQyV1gIMmlShG3u5GM9sl7JMcQmbCywYjVyB6fxH4/olH7DVm2ZkEoVuVQGO/PSVKepQ1xf3ifCIg+NJ1fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1725450654;
	bh=67DHXGeJzWhna0cN+5taHLo5aa/4CvTVHOaYRAJNr04=;
	h=Subject:From:To:Date:From;
	b=hSX5r1CbExjxfJxDsn+93OKex/VzzN6iM5g2Tmg71/JtBIRzcV/Fm7VgQYHSeWiYh
	 d/WgVNgCb83uGaS0mmYEGBGWFZSpXX4lnLaMQTFAkYyoIZ1tZ+BlsBrLbmiIYWbXoz
	 OI4m0FNO2MVKUtvcA/MSUvDFCuqA3iiIsspdXoMc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CEF0C4CEC2
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:50:54 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F0D023806651
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:50:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.49 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Sep 2024 11:50:54 +0000
Message-Id: <20240904115054.release-6.6.49@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.49
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.49.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.49.xz

Linux kernel version 6.6.49 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.49.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.49.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.49.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.49/v6.6.48

