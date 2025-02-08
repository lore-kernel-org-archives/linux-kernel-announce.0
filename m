Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DADB133DB
	for <linux-kernel-announce@vger.kernel.org>; Sat,  8 Feb 2025 09:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739006716; cv=none; b=sJ+6Qy/7sxWGudr7Gw3Zxu6eDzzT6gdB7ktllObiM4cqlLWqVXpeMwJNeKCjAZW6AYHfR45CNK/ev3lPn1RBbc3DOi2rkcqg9ww0k13tMlPA9qBb8U6eJfI/584bpmzqE7Uuqtf37EYMl9nHNUc9ShvfbbvjHHlukUJu6AQnAHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739006716; c=relaxed/simple;
	bh=edWl1zx0pwMJJfCD1RGZRgnNfnc0JjufmS2yzHfmQIs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hoPDXMn6FtQnSeyXIFwvi01O6T/v4k95XExbeWcJFcRzaLvtearAp3QpNbjsvG3DSGLzpQZHLhBS3oYenGz6h5cz7v9QoiWmtRmi35ctdbtJ8HGb8S9mErDTqtHdfdfqEkx4lKWKxJiQY/hYegj+dbe+CxLNEtf+e+O7vz6kEs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1739006716;
	bh=edWl1zx0pwMJJfCD1RGZRgnNfnc0JjufmS2yzHfmQIs=;
	h=Subject:From:To:Date:From;
	b=q3jbFmOkzXw5e8Iq0GWRZ9iSQFqxTMuZor9rHdcUyqW5ePpzO00ePPaQXt6+eeRw7
	 QRTRUi/EaTAsbl/pzLla37ER4HrGeSvE+TtH2pjnCB1kVaOQn+myHqPodlKbZTzqJZ
	 yoHlMLN6spHTyrvhxeCCNAJbuhAqUmD4OEpn7jFU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C695CC4CED6
	for <linux-kernel-announce@vger.kernel.org>; Sat,  8 Feb 2025 09:25:16 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F1241380AAF5
	for <linux-kernel-announce@vger.kernel.org>; Sat,  8 Feb 2025 09:25:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 08 Feb 2025 09:25:44 +0000
Message-Id: <20250208092544.release-6.13.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.2.xz

Linux kernel version 6.13.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.13.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.13.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.13.2/v6.13.1

